import driver from '../DB/index.js';
import neo4j from 'neo4j-driver';

class Team {
    static async create(teamData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `CREATE (t:Team {
                    id: $id,
                    Name: $Name,
                    Category: $Category,
                    City: $City,
                    Division: $Division,
                    Stadium: $Stadium,
                    Manager: $Manager,
                    President: $President
                }) RETURN t`,
                teamData
            );
            return result.records[0].get('t').properties;
        } finally {
            await session.close();
        }
    }

    static async findAll() {
        const session = driver.session();
        try {
            const result = await session.run('MATCH (t:Team) RETURN t');
            return result.records.map(record => record.get('t').properties);
        } finally {
            await session.close();
        }
    }

    static async findById(id) {
        const session = driver.session();
        try {
            const result = await session.run(
                'MATCH (t:Team {id: $id}) RETURN t',
                { id: parseInt(id) }
            );
            return result.records[0]?.get('t').properties;
        } finally {
            await session.close();
        }
    }

    static async update(id, teamData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (t:Team {id: $id})
                 SET t += $teamData
                 RETURN t`,
                { id: parseInt(id), teamData }
            );
            return result.records[0]?.get('t').properties;
        } finally {
            await session.close();
        }
    }

    static async delete(id) {
        const session = driver.session();
        try {
            await session.run(
                'MATCH (t:Team {id: $id}) DELETE t',
                { id: parseInt(id) }
            );
            return { message: 'Team deleted successfully' };
        } finally {
            await session.close();
        }
    }
}

export default Team;
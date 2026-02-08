import driver from '../DB/index.js';

class Sport {
    static async create(sportData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `CREATE (s:Sport {
                    id: $id,
                    Name: $Name,
                    Category: $Category,
                    OnField_Players: $OnField_Players,
                    AVG_Time_MIN: $AVG_Time_MIN,
                    Home_Country: $Home_Country
                }) RETURN s`,
                sportData
            );
            return result.records[0].get('s').properties;
        } finally {
            await session.close();
        }
    }

    static async findAll() {
        const session = driver.session();
        try {
            const result = await session.run('MATCH (s:Sport) RETURN s');
            return result.records.map(record => record.get('s').properties);
        } finally {
            await session.close();
        }
    }

    static async findById(id) {
        const session = driver.session();
        try {
            const result = await session.run(
                'MATCH (s:Sport {id: $id}) RETURN s',
                { id: parseInt(id) }
            );
            return result.records[0]?.get('s').properties;
        } finally {
            await session.close();
        }
    }

    static async update(id, sportData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (s:Sport {id: $id})
                 SET s += $sportData
                 RETURN s`,
                { id: parseInt(id), sportData }
            );
            return result.records[0]?.get('s').properties;
        } finally {
            await session.close();
        }
    }

    static async delete(id) {
        const session = driver.session();
        try {
            await session.run(
                'MATCH (s:Sport {id: $id}) DELETE s',
                { id: parseInt(id) }
            );
            return { message: 'Sport deleted successfully' };
        } finally {
            await session.close();
        }
    }
}

export default Sport;
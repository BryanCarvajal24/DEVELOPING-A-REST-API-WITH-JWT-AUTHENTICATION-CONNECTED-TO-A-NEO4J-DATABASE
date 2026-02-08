import driver from '../DB/index.js';

class Player {
    static async create(playerData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `CREATE (p:Player {
                    id: $id,
                    Name: $Name,
                    Gender: $Gender,
                    Position: $Position,
                    Dominant_Foot: $Dominant_Foot
                }) RETURN p`,
                playerData
            );
            return result.records[0].get('p').properties;
        } catch (error) {
            console.error('Error creating player:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    static async findAll() {
        const session = driver.session();
        try {
            const result = await session.run('MATCH (p:Player) RETURN p');
            return result.records.map(record => record.get('p').properties);
        } catch (error) {
            console.error('Error finding players:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    static async findById(id) {
        const session = driver.session();
        try {
            const result = await session.run(
                'MATCH (p:Player {id: $id}) RETURN p',
                { id: parseInt(id) }
            );
            return result.records[0]?.get('p').properties;
        } catch (error) {
            console.error('Error finding player by id:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    static async update(id, playerData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (p:Player {id: $id})
                 SET p += $playerData
                 RETURN p`,
                { id: parseInt(id), playerData }
            );
            return result.records[0]?.get('p').properties;
        } catch (error) {
            console.error('Error updating player:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    static async delete(id) {
        const session = driver.session();
        try {
            await session.run(
                'MATCH (p:Player {id: $id}) DELETE p',
                { id: parseInt(id) }
            );
            return { message: 'Player deleted successfully' };
        } catch (error) {
            console.error('Error deleting player:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    // Métodos adicionales para relaciones
    static async assignToTeam(playerId, teamId, contractData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (p:Player {id: $playerId}), (t:Team {id: $teamId})
                 CREATE (p)-[r:PLAYS_FOR {
                    contract_start: date($contractStart),
                    contract_end: date($contractEnd),
                    jersey_number: $jerseyNumber
                 }]->(t)
                 RETURN p, r, t`,
                {
                    playerId: parseInt(playerId),
                    teamId: parseInt(teamId),
                    ...contractData
                }
            );
            return result.records[0];
        } catch (error) {
            console.error('Error assigning player to team:', error);
            throw error;
        } finally {
            await session.close();
        }
    }

    static async getPlayerWithTeam(playerId) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (p:Player {id: $playerId})-[r:PLAYS_FOR]->(t:Team)
                 RETURN p, r, t`,
                { playerId: parseInt(playerId) }
            );
            return result.records[0];
        } catch (error) {
            console.error('Error getting player with team:', error);
            throw error;
        } finally {
            await session.close();
        }
    }
}

export default Player;
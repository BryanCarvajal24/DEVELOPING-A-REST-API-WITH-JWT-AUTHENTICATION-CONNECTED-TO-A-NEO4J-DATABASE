import driver from '../DB/index.js';

class Country {
    static async create(countryData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `CREATE (c:Country {
                    id: $id,
                    Name: $Name,
                    ISO: $ISO,
                    Capital: $Capital,
                    Continent: $Continent,
                    Population_MILL: $Population_MILL,
                    Area_KM2: $Area_KM2,
                    Languague: $Languague,
                    Currency: $Currency,
                    Government: $Government
                }) RETURN c`,
                countryData
            );
            return result.records[0].get('c').properties;
        } finally {
            await session.close();
        }
    }

    static async findAll() {
        const session = driver.session();
        try {
            const result = await session.run('MATCH (c:Country) RETURN c');
            return result.records.map(record => record.get('c').properties);
        } finally {
            await session.close();
        }
    }

    static async findById(id) {
        const session = driver.session();
        try {
            const result = await session.run(
                'MATCH (c:Country {id: $id}) RETURN c',
                { id: parseInt(id) }
            );
            return result.records[0]?.get('c').properties;
        } finally {
            await session.close();
        }
    }

    static async update(id, countryData) {
        const session = driver.session();
        try {
            const result = await session.run(
                `MATCH (c:Country {id: $id})
                 SET c += $countryData
                 RETURN c`,
                { id: parseInt(id), countryData }
            );
            return result.records[0]?.get('c').properties;
        } finally {
            await session.close();
        }
    }

    static async delete(id) {
        const session = driver.session();
        try {
            await session.run(
                'MATCH (c:Country {id: $id}) DELETE c',
                { id: parseInt(id) }
            );
            return { message: 'Country deleted successfully' };
        } finally {
            await session.close();
        }
    }
}

export default Country;
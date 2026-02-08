import Country from '../Models/Country.js';

export const CountryController = {
    async findAll(req, res) {
        try {
            const records = await Country.executeQuery('MATCH (c:Country) RETURN c');
            const countries = records.map(record => record.get('c').properties);
            res.json(countries);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const result = await Country.executeWrite(
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
                req.body
            );
            res.status(201).json(result);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async findById(req, res) {
        try {
            const records = await Country.executeQuery(
                'MATCH (c:Country {id: $id}) RETURN c',
                { id: parseInt(req.params.id) }
            );
            const country = records[0]?.get('c').properties;
            if (!country) {
                return res.status(404).json({ message: 'Country not found' });
            }
            res.json(country);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};
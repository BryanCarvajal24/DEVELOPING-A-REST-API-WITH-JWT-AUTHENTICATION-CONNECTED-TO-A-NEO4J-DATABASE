import Sport from '../Models/Sport.js';

export const SportController = {
    async findAll(req, res) {
        try {
            const sports = await Sport.findAll();
            res.json(sports);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const sport = await Sport.create(req.body);
            res.status(201).json(sport);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async findById(req, res) {
        try {
            const sport = await Sport.findById(req.params.id);
            if (!sport) {
                return res.status(404).json({ message: 'Sport not found' });
            }
            res.json(sport);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const sport = await Sport.update(req.params.id, req.body);
            if (!sport) {
                return res.status(404).json({ message: 'Sport not found' });
            }
            res.json(sport);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const result = await Sport.delete(req.params.id);
            res.json(result);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};
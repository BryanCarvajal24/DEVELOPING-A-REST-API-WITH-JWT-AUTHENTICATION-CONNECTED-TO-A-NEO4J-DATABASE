import Team from '../Models/Team.js';

export const TeamController = {
    async findAll(req, res) {
        try {
            const teams = await Team.findAll();
            res.json(teams);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const team = await Team.create(req.body);
            res.status(201).json(team);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async findById(req, res) {
        try {
            const team = await Team.findById(req.params.id);
            if (!team) {
                return res.status(404).json({ message: 'Team not found' });
            }
            res.json(team);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const team = await Team.update(req.params.id, req.body);
            if (!team) {
                return res.status(404).json({ message: 'Team not found' });
            }
            res.json(team);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const result = await Team.delete(req.params.id);
            res.json(result);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};
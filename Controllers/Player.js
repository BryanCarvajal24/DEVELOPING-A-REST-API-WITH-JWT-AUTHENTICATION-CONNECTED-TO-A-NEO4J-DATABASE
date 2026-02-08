import Player from '../Models/Player.js';

export const PlayerController = {
    async findAll(req, res) {
        try {
            const players = await Player.findAll();
            res.json(players);
        } catch (error) {
            console.error('Controller error in findAll:', error);
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const player = await Player.create(req.body);
            res.status(201).json(player);
        } catch (error) {
            console.error('Controller error in create:', error);
            res.status(500).json({ error: error.message });
        }
    },

    async findById(req, res) {
        try {
            const player = await Player.findById(req.params.id);
            if (!player) {
                return res.status(404).json({ message: 'Player not found' });
            }
            res.json(player);
        } catch (error) {
            console.error('Controller error in findById:', error);
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const player = await Player.update(req.params.id, req.body);
            if (!player) {
                return res.status(404).json({ message: 'Player not found' });
            }
            res.json(player);
        } catch (error) {
            console.error('Controller error in update:', error);
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const result = await Player.delete(req.params.id);
            res.json(result);
        } catch (error) {
            console.error('Controller error in delete:', error);
            res.status(500).json({ error: error.message });
        }
    },

    async assignToTeam(req, res) {
        try {
            const { playerId } = req.params;
            const { teamId, contractStart, contractEnd, jerseyNumber } = req.body;
            const result = await Player.assignToTeam(playerId, teamId, {
                contractStart,
                contractEnd,
                jerseyNumber
            });
            res.json(result);
        } catch (error) {
            console.error('Controller error in assignToTeam:', error);
            res.status(500).json({ error: error.message });
        }
    }
};
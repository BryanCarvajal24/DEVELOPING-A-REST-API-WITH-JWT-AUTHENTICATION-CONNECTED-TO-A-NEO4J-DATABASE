import { Router } from 'express';
import playerRoutes from './Player.js';
import teamRoutes from './Team.js';
import sportRoutes from './Sport.js';
import countryRoutes from './Country.js';

const router = Router();

// Configuración de rutas
router.use('/players', playerRoutes);
router.use('/teams', teamRoutes);
router.use('/sports', sportRoutes);
router.use('/countries', countryRoutes);

// Ruta base para verificar que la API está funcionando
router.get('/', (req, res) => {
    res.json({
        message: 'Welcome to the Sports API',
        endpoints: {
            players: '/api/players',
            teams: '/api/teams',
            sports: '/api/sports',
            countries: '/api/countries'
        }
    });
});

export default router;
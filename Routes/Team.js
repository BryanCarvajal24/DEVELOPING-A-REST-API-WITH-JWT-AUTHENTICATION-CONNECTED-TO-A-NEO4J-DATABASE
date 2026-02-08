import { Router } from 'express';
import { TeamController } from '../Controllers/Team.js';

const router = Router();

// Rutas básicas CRUD
router.get('/', TeamController.findAll);
router.post('/', TeamController.create);
router.get('/:id', TeamController.findById);
router.put('/:id', TeamController.update);
router.delete('/:id', TeamController.delete);

export default router;
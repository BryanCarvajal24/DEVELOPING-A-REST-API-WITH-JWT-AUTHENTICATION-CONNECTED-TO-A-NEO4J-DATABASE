import { Router } from 'express';
import { SportController } from '../Controllers/Sport.js';

const router = Router();

// Rutas básicas CRUD
router.get('/', SportController.findAll);
router.post('/', SportController.create);
router.get('/:id', SportController.findById);
router.put('/:id', SportController.update);
router.delete('/:id', SportController.delete);

export default router;
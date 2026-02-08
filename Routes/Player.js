import { Router } from 'express';
import { PlayerController } from '../Controllers/Player.js';

const router = Router();

router.get('/', PlayerController.findAll);
router.post('/', PlayerController.create);
router.get('/:id', PlayerController.findById);
router.put('/:id', PlayerController.update);
router.delete('/:id', PlayerController.delete);
router.post('/:playerId/team', PlayerController.assignToTeam);

export default router;
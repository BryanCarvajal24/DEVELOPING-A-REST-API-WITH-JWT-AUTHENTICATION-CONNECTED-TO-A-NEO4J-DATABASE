export const validatePlayer = (req, res, next) => {
    const { name, age, country } = req.body;
    
    if (!name || !age) {
      return res.status(400).json({
        error: 'Name and age are required fields'
      });
    }
    
    next();
  };
  
  export const validateTeam = (req, res, next) => {
    const { name, country } = req.body;
    
    if (!name || !country) {
      return res.status(400).json({
        error: 'Name and country are required fields'
      });
    }
    
    next();
  };
  
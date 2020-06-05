using ProjectAssistant.Interfaces;
using System;
using System.Collections.Generic;
using ProjectAssistant.Interfaces;

namespace ProjectAssistant.Model
{
    public partial class Task:IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int ProjectId { get; set; }
        public int? UserId { get; set; }

        public virtual Project Project { get; set; }
        public virtual User User { get; set; }
    }
}

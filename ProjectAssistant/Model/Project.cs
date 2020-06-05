using ProjectAssistant.Interfaces;
using System;
using System.Collections.Generic;

namespace ProjectAssistant.Model
{
    public partial class Project:IEntity
    {
        public Project()
        {
            Task = new HashSet<Task>();
            User = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Task> Task { get; set; }
        public virtual ICollection<User> User { get; set; }
    }
}

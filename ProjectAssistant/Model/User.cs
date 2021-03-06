﻿using ProjectAssistant.Interfaces;
using System;
using System.Collections.Generic;

namespace ProjectAssistant.Model
{
    public partial class User:IEntity
    {
        public User()
        {
            Task = new HashSet<Task>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Role { get; set; }
        public int? ProjectId { get; set; }

        public virtual Project Project { get; set; }
        public virtual ICollection<Task> Task { get; set; }
    }
}

using ProjectAssistant.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectAssistant.EFCore
{
    public class TasksRepository : EfCoreRepository<Model.Task, ProjectAssistantDbContext>
    {
        public TasksRepository(ProjectAssistantDbContext context) : base(context) { }
    }
}

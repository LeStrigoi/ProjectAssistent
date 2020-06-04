using ProjectAssistant.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectAssistant.EFCore
{
    public class ProjectsRepository:EfCoreRepository<Project,ProjectAssistantDbContext>
    {
        public ProjectsRepository(ProjectAssistantDbContext context) : base(context)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjectAssistant.EFCore;
using ProjectAssistant.Model;

namespace ProjectAssistant.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectsController : GenericController<Project,ProjectsRepository>
    {
        public ProjectsController(ProjectsRepository repository):base(repository)
        {
          
        }

        
    }
}

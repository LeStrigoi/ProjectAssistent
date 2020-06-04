using ProjectAssistant.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectAssistant.EFCore
{
    public class UsersRepository : EfCoreRepository<User, ProjectAssistantDbContext>
    {
        public UsersRepository(ProjectAssistantDbContext context) : base(context) { }
    }
}

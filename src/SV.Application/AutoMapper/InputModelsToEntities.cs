﻿using AutoMapper;
using SV.Application.InputModels.Aeronaves;
using SV.Application.InputModels.Aeroportos;
using SV.Application.InputModels.Cidades;
using SV.Application.InputModels.Funcionarios;
using SV.Core.Entities.Aeronaves;
using SV.Core.Entities.Aeroportos;
using SV.Core.Entities.Cidades;
using SV.Core.Entities.Funcionarios;

namespace SV.Application.AutoMapper
{
    public class InputModelsToEntities : Profile
    {
        public InputModelsToEntities()
        {
            CreateMap<CidadeInputModel, Cidade>();

            CreateMap<AeroportoInputModel, Aeroporto>().ReverseMap();

            CreateMap<ClasseInputModel, Classe>().ReverseMap();
            CreateMap<AeronaveInputModel, Aeronave>().ReverseMap();
            CreateMap<AssentoInputModel, Assento>().ReverseMap();

            CreateMap<CategoriaFuncionarioInputModel, CategoriaFuncionario>().ReverseMap();
            CreateMap<FuncionarioInputModel, Funcionario>().ReverseMap();
        }
    }
}

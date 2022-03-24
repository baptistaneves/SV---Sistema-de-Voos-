﻿using FluentValidation;
using SV.Application.InputModels.Aeronaves;

namespace SV.Application.Validations.Aeronaves
{
    public class AssentoValidation : AbstractValidator<AssentoInputModel>
    {
        public AssentoValidation()
        {
            RuleFor(a => a.Numero)
                .NotEmpty().WithMessage("Informe o Número do Assento!")
                .GreaterThan(0).WithMessage("O Número do Assento deve ser maior que zero!");

            RuleFor(a => a.AeronaveId)
               .NotEmpty().WithMessage("Informe a Aeronave deste Assento!");

            RuleFor(a => a.ClasseId)
               .NotEmpty().WithMessage("Informe a Classe deste Assento!");
        }
    }
}

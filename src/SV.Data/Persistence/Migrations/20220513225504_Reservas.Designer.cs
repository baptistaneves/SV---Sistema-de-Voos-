﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SV.Data.Persistence.Context;

namespace SV.Data.Persistence.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20220513225504_Reservas")]
    partial class Reservas
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.13")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("RoleId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<System.Guid>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<System.Guid>", b =>
                {
                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Aeronave", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<bool>("Activo")
                        .HasColumnType("bit");

                    b.Property<string>("Fabricante")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Modelo")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<int>("TotalDeAssentos")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Aeronaves");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Assento", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("AeronaveId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ClasseId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("Numero")
                        .HasColumnType("int");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.Property<Guid>("VooId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("AeronaveId");

                    b.HasIndex("ClasseId");

                    b.HasIndex("VooId");

                    b.ToTable("Assentos");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Classe", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Descricao")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Classes");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeroportos.Aeroporto", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<bool>("Activo")
                        .HasColumnType("bit");

                    b.Property<Guid>("CidadeId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.HasKey("Id");

                    b.HasIndex("CidadeId");

                    b.ToTable("Aeroportos");
                });

            modelBuilder.Entity("SV.Core.Entities.Cidades.Cidade", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Descricao")
                        .HasColumnType("varchar(max)");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Pais")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Cidades");
                });

            modelBuilder.Entity("SV.Core.Entities.Funcionarios.CategoriaFuncionario", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Descricao")
                        .HasColumnType("varchar(max)");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("CategoriasFuncionario");
                });

            modelBuilder.Entity("SV.Core.Entities.Funcionarios.Funcionario", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("AreaAcademica")
                        .HasColumnType("varchar(50)");

                    b.Property<bool>("Ativo")
                        .HasColumnType("bit");

                    b.Property<Guid>("CategoriaFuncionarioId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("DataNascimento")
                        .HasColumnType("datetime2");

                    b.Property<string>("Documento")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("varchar(200)");

                    b.Property<string>("Endereco")
                        .IsRequired()
                        .HasColumnType("varchar(500)");

                    b.Property<string>("EstadoCivil")
                        .IsRequired()
                        .HasColumnType("varchar(30)");

                    b.Property<string>("Imagem")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Nacionalidade")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Naturalidade")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("NivelAcademico")
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<string>("NumeroDocumento")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Observacao")
                        .HasColumnType("varchar(max)");

                    b.Property<string>("Sexo")
                        .IsRequired()
                        .HasColumnType("varchar(30)");

                    b.Property<string>("Telefone")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("CategoriaFuncionarioId");

                    b.ToTable("Funcionarios");
                });

            modelBuilder.Entity("SV.Core.Entities.Reservas.Reserva", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("AssentoId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Classe")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<DateTime>("DataNascimento")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("varchar(225)");

                    b.Property<string>("Endereco")
                        .IsRequired()
                        .HasColumnType("varchar(500)");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(222)");

                    b.Property<string>("NumeroDocumento")
                        .IsRequired()
                        .HasColumnType("varchar(225)");

                    b.Property<decimal>("Preco")
                        .HasColumnType("decimal(18,2)");

                    b.Property<string>("Sexo")
                        .IsRequired()
                        .HasColumnType("varchar(10)");

                    b.Property<string>("Telefone")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<string>("TipoDocumento")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<Guid>("VooId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.ToTable("Reservas");
                });

            modelBuilder.Entity("SV.Core.Entities.Voos.TipoDeVoo", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Descricao")
                        .HasColumnType("varchar(max)");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("TiposDeVoo");
                });

            modelBuilder.Entity("SV.Core.Entities.Voos.Voo", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("AeronaveId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("AeroportoDeOrigem")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<string>("AeroportoDestino")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<Guid?>("AeroportoId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("CoPiloto")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DataDePartida")
                        .HasColumnType("datetime2");

                    b.Property<string>("Descricao")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<bool>("Estado")
                        .HasColumnType("bit");

                    b.Property<DateTime>("HoraDePartida")
                        .HasColumnType("datetime2");

                    b.Property<string>("Imagem")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Piloto")
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal>("PrecoCusto")
                        .HasColumnType("decimal(18,2)");

                    b.Property<DateTime>("PrevisaoDeChegada")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("PrevisaoDeChegadaAoDestino")
                        .HasColumnType("datetime2");

                    b.Property<Guid>("TipoDeVooId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("AeronaveId");

                    b.HasIndex("AeroportoId");

                    b.HasIndex("TipoDeVooId");

                    b.ToTable("Voos");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppRole", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppUser", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NomeDeUtilizador")
                        .HasColumnType("varchar(100)");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppUserRole", b =>
                {
                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("RoleId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<System.Guid>", b =>
                {
                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<System.Guid>", b =>
                {
                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<System.Guid>", b =>
                {
                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<System.Guid>", b =>
                {
                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Assento", b =>
                {
                    b.HasOne("SV.Core.Entities.Aeronaves.Aeronave", null)
                        .WithMany("Assentos")
                        .HasForeignKey("AeronaveId");

                    b.HasOne("SV.Core.Entities.Aeronaves.Classe", "Classe")
                        .WithMany("Assentos")
                        .HasForeignKey("ClasseId")
                        .IsRequired();

                    b.HasOne("SV.Core.Entities.Voos.Voo", "Voo")
                        .WithMany("Assentos")
                        .HasForeignKey("VooId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Classe");

                    b.Navigation("Voo");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeroportos.Aeroporto", b =>
                {
                    b.HasOne("SV.Core.Entities.Cidades.Cidade", "Cidade")
                        .WithMany("Aeroportos")
                        .HasForeignKey("CidadeId")
                        .IsRequired();

                    b.Navigation("Cidade");
                });

            modelBuilder.Entity("SV.Core.Entities.Funcionarios.Funcionario", b =>
                {
                    b.HasOne("SV.Core.Entities.Funcionarios.CategoriaFuncionario", "CategoriaFuncionario")
                        .WithMany("Funcionarios")
                        .HasForeignKey("CategoriaFuncionarioId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CategoriaFuncionario");
                });

            modelBuilder.Entity("SV.Core.Entities.Voos.Voo", b =>
                {
                    b.HasOne("SV.Core.Entities.Aeronaves.Aeronave", "Aeronave")
                        .WithMany()
                        .HasForeignKey("AeronaveId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SV.Core.Entities.Aeroportos.Aeroporto", "Aeroporto")
                        .WithMany()
                        .HasForeignKey("AeroportoId");

                    b.HasOne("SV.Core.Entities.Voos.TipoDeVoo", "TipoDeVoo")
                        .WithMany("Voos")
                        .HasForeignKey("TipoDeVooId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Aeronave");

                    b.Navigation("Aeroporto");

                    b.Navigation("TipoDeVoo");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppUserRole", b =>
                {
                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppRole", "Role")
                        .WithMany("UserRoles")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SV.Data.Persistence.Models.Usuarios.AppUser", "User")
                        .WithMany("UserRoles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Role");

                    b.Navigation("User");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Aeronave", b =>
                {
                    b.Navigation("Assentos");
                });

            modelBuilder.Entity("SV.Core.Entities.Aeronaves.Classe", b =>
                {
                    b.Navigation("Assentos");
                });

            modelBuilder.Entity("SV.Core.Entities.Cidades.Cidade", b =>
                {
                    b.Navigation("Aeroportos");
                });

            modelBuilder.Entity("SV.Core.Entities.Funcionarios.CategoriaFuncionario", b =>
                {
                    b.Navigation("Funcionarios");
                });

            modelBuilder.Entity("SV.Core.Entities.Voos.TipoDeVoo", b =>
                {
                    b.Navigation("Voos");
                });

            modelBuilder.Entity("SV.Core.Entities.Voos.Voo", b =>
                {
                    b.Navigation("Assentos");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppRole", b =>
                {
                    b.Navigation("UserRoles");
                });

            modelBuilder.Entity("SV.Data.Persistence.Models.Usuarios.AppUser", b =>
                {
                    b.Navigation("UserRoles");
                });
#pragma warning restore 612, 618
        }
    }
}
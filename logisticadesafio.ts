const MEU_NOME = "Dhimitri";
const MEU_RA = 134567;
const FC = 0.8 //Dhimitri  (8 letras) /10

type Setor = "Biologia" | "Engenharia" | "Suprimentos";

interface Carga {
    id: string;
    pesoKg: number;
    setor: Setor;
    perigosa: boolean;
    dataChegada: Date;
    prioridade?: number;
}
const cargas: Carga[] = [
    {id: `ID-${MEU_RA}-01`, pesoKg: 100, setor: "Biologia", perigosa: true, dataChegada: new Date("2026-04-01")}, 
    {id: `ID-${MEU_RA}-02`, pesoKg: 150, setor: "Engenharia", perigosa: true, dataChegada: new Date("2026-04-02")},
    {id: `ID-${MEU_RA}-03`, pesoKg: 120, setor: "Suprimentos", perigosa: false, dataChegada: new Date("2026-04-24")},
    {id: `ID-${MEU_RA}-04`, pesoKg: 50, setor: "Engenharia", perigosa: false, dataChegada: new Date("2026-05-01")},
    {id: `ID-${MEU_RA}-05`, pesoKg: 220, setor: "Biologia", perigosa: true, dataChegada: new Date("2026-05-04")}
    ];
function calcularPrioridade(item: Carga): number {
    let multiplicador = 1.0;

    if (item.setor === "Biologia") {
        multiplicador = 1.5;
    } else if (item.setor === "Engenharia") {
        multiplicador = 1.2;
    }

    let nota = item.pesoKg * multiplicador;

    if (item.perigosa) {
        nota += 50; 
    }

    nota *= FC; 

    const hoje = new Date();
    const dias = Math.floor((hoje.getTime() - item.dataChegada.getTime()) / (1000 * 60 * 60 * 24));
    nota -= dias;

    return nota; 
}
cargas.forEach(c => c.prioridade = calcularPrioridade(c));

cargas.sort((a, b) => (b.prioridade || 0) - (a.prioridade || 0));

console.log(`--- SISTEMA DE LOGÍSTICA: ${MEU_NOME} | RA: ${MEU_RA} ---`);
console.table(cargas);

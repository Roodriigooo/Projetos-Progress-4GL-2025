DEFINE VARIABLE cFileName    AS CHARACTER NO-UNDO INIT "C:\DKP\rodrigoDkp\clientes-partes\clientes-partes.csv".                    
DEFINE VARIABLE iCount       AS INTEGER NO-UNDO INIT 0.                                                                                          

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                            
//{DKPSales/include/ksfnc001.i}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
OUTPUT TO VALUE(cFileName).                                                                                                                                                                                                                  
/* Escreve o cabe‡alho no arquivo CSV */                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
PUT UNFORMATTED
                "|clienteId|clienteIdERP|clienteTipoPessoa|clienteNomeAbreviado|clienteNomeMatriz|clienteNomeFantasia|clienteRazaoSocial|clienteCNPJ|clienteIE|grupoFinanceiroId|grupoComercialId|canalVendaId|clienteTipoCredito|clienteObservacao|clienteObservacaoFiscal |clientePortador|clientePortadorPreferencial|clienteInscricaoMunicipal|representanteId|clienteStatus|usuarioIdCadastro|usuarioAlteracao|transportadoraId|clienteEmailNFE|clienteEmailComercial|clienteEmail2|clienteTelefoneContato1|clienteRamal1|clienteTelefoneContato2|clienteRamal2 |clienteObservacaoFinanceiro|clienteSitIntegracao|clienteCnpjCobranca|clienteCNAE|clienteCodigoSuframa|clienteRegimeEspecial|workFlowSituacao|clienteCPF|clienteRG|clienteRGOrgao|categoriaClienteId|clienteStatusEnviadoPor|clienteSitIntegracaoStatus|clienteIndicadorCredito|clienteMotivo |clienteSegmentoId|clienteSubSegmentoId|clienteNatOperInterna|clienteNatOperExterna|clienteramoatividade|condicaoPagamentoId|clienteIsentoIE|matrizFinanceira|clienteValorCredito|clienteContribuinteICMS|clienteSimplesNacional|clienteLimiteCredito|emiteBoleto|avaliacao|avaliacaoEmbarque|periodoAtraso|clienteFaturamentoParcial|clienteSuspensaoIPI|clienteAlterado|clienteInativo|clienteDataCadastro|clienteDataLimiteCredito|dataAlteracao|clienteRGDataEmissao|clienteMotivoData|" SKIP .

FOR EACH ks-cliente NO-LOCK
    WHERE ks-cliente.clienteId = 5216
    BY ks-cliente.clienteId:                                                                           
    
    /* Exporta apenas o primeiro registro e sai do loop */
    PUT UNFORMATTED
      STRING(IF ks-cliente.clienteid             <> 0 THEN ks-cliente.clienteid ELSE 0, "999999999") + "|"
      STRING(IF ks-cliente.clienteIdERP <> "" THEN ks-cliente.clienteIdERP ELSE "0") + "|"
      (IF ks-cliente.clienteTipoPessoa           <> "" THEN ks-cliente.clienteTipoPessoa ELSE "0") + "|"
      (IF ks-cliente.clienteNomeAbreviado        <> "" THEN ks-cliente.clienteNomeAbreviado ELSE "0") + "|"
      (IF ks-cliente.clienteNomeMatriz           <> "" THEN ks-cliente.clienteNomeMatriz ELSE "0") + "|"
      (IF ks-cliente.clienteNomeFantasia         <> "" THEN ks-cliente.clienteNomeFantasia ELSE "0") + "|"
      (IF ks-cliente.clienteRazaoSocial          <> "" THEN ks-cliente.clienteRazaoSocial ELSE "0") + "|"
      (IF ks-cliente.clienteCNPJ                 <> "" THEN ks-cliente.clienteCNPJ ELSE "0") + "|"    
      (IF ks-cliente.clienteIE                   <> "" THEN ks-cliente.clienteIE ELSE "0") + "|"
      (IF ks-cliente.grupoFinanceiroId           <> "" THEN ks-cliente.grupoFinanceiroId ELSE "0") + "|"
      (IF ks-cliente.grupoComercialId            <> "0" THEN ks-cliente.grupoComercialId ELSE "0") + "|"
      (IF ks-cliente.canalVendaId                <> "" THEN ks-cliente.canalVendaId ELSE "0") + "|"
      (IF ks-cliente.clienteTipoCredito          <> "" THEN ks-cliente.clienteTipoCredito ELSE "0") + "|"            
      (IF ks-cliente.clienteObservacao           <> "" THEN ks-cliente.clienteObservacao ELSE "0") + "|"
      (IF ks-cliente.clienteObservacaoFiscal     <> "" THEN ks-cliente.clienteObservacaoFiscal ELSE "0") + "|"
      (IF ks-cliente.clientePortador             <> "" THEN ks-cliente.clientePortador ELSE "0") + "|"
      (IF ks-cliente.clientePortadorPreferencial <> "" THEN ks-cliente.clientePortadorPreferencial ELSE "0") + "|"
      (IF ks-cliente.clienteInscricaoMunicipal   <> "" THEN ks-cliente.clienteInscricaoMunicipal ELSE "0") + "|"
      (IF ks-cliente.representanteId             <> "" THEN ks-cliente.representanteId ELSE "0") + "|"
      (IF ks-cliente.clienteStatus               <> "" THEN ks-cliente.clienteStatus ELSE "0") + "|"
      (IF ks-cliente.usuarioIdCadastro           <> "" THEN ks-cliente.usuarioIdCadastro ELSE "0") + "|"             
      (IF ks-cliente.usuarioAlteracao            <> "" THEN ks-cliente.usuarioAlteracao ELSE "0") + "|"
      (IF ks-cliente.transportadoraId            <> "" THEN ks-cliente.transportadoraId ELSE "0") + "|"
      (IF ks-cliente.clienteEmailNFE             <> "" THEN ks-cliente.clienteEmailNFE ELSE "0") + "|"
      (IF ks-cliente.clienteEmailComercial       <> "" THEN ks-cliente.clienteEmailComercial ELSE "0") + "|"
      (IF ks-cliente.clienteEmail2               <> "" THEN ks-cliente.clienteEmail2 ELSE "0") + "|"
      (IF ks-cliente.clienteTelefoneContato1     <> "" THEN ks-cliente.clienteTelefoneContato1 ELSE "0") + "|"
      (IF ks-cliente.clienteRamal1               <> "" THEN ks-cliente.clienteRamal1 ELSE "0") + "|"
      (IF ks-cliente.clienteTelefoneContato2     <> "" THEN ks-cliente.clienteTelefoneContato2 ELSE "0") + "|"
      (IF ks-cliente.clienteRamal2               <> "" THEN ks-cliente.clienteRamal2 ELSE "0") + "|"
      (IF ks-cliente.clienteObservacaoFinanceiro <> "" THEN ks-cliente.clienteObservacaoFinanceiro ELSE "0") + "|"
      (IF ks-cliente.clienteSitIntegracao        <> "" THEN ks-cliente.clienteSitIntegracao ELSE "0") + "|"
      (IF ks-cliente.clienteCnpjCobranca         <> "" THEN ks-cliente.clienteCnpjCobranca ELSE "0") + "|"
      (IF ks-cliente.clienteCNAE                 <> "" THEN ks-cliente.clienteCNAE ELSE "0") + "|"
      (IF ks-cliente.clienteCodigoSuframa        <> "" THEN ks-cliente.clienteCodigoSuframa ELSE "0") + "|"
      (IF ks-cliente.clienteRegimeEspecial       <> "" THEN ks-cliente.clienteRegimeEspecial ELSE "0") + "|"
      (IF ks-cliente.workFlowSituacao            <> "" THEN ks-cliente.workFlowSituacao ELSE "0") + "|"
      (IF ks-cliente.clienteCPF                  <> "" THEN ks-cliente.clienteCPF ELSE "0") + "|"
      (IF ks-cliente.clienteRG                   <> "" THEN ks-cliente.clienteRG ELSE "0") + "|"
      (IF ks-cliente.clienteRGOrgao              <> "" THEN ks-cliente.clienteRGOrgao ELSE "0") + "|"
      (IF ks-cliente.categoriaClienteId          <> "" THEN ks-cliente.categoriaClienteId ELSE "0") + "|"
      (IF ks-cliente.clienteStatusEnviadoPor     <> "" THEN ks-cliente.clienteStatusEnviadoPor ELSE "0") + "|"
      (IF ks-cliente.clienteSitIntegracaoStatus  <> "" THEN ks-cliente.clienteSitIntegracaoStatus ELSE "0") + "|"
      (IF ks-cliente.clienteIndicadorCredito     <> "" THEN ks-cliente.clienteIndicadorCredito ELSE "0") + "|"
      (IF ks-cliente.clienteMotivo               <> "" THEN ks-cliente.clienteMotivo ELSE "0") + "|"
      (IF ks-cliente.clienteSegmentoId           <> "" THEN ks-cliente.clienteSegmentoId ELSE "0") + "|"
      (IF ks-cliente.clienteSubSegmentoId        <> "" THEN ks-cliente.clienteSubSegmentoId ELSE "0") + "|"
      (IF ks-cliente.clienteNatOperInterna       <> "" THEN ks-cliente.clienteNatOperInterna ELSE "0") + "|"
      (IF ks-cliente.clienteNatOperExterna       <> "" THEN ks-cliente.clienteNatOperExterna ELSE "0") + "|"
      (IF ks-cliente.clienteramoatividade        <> "" THEN ks-cliente.clienteramoatividade ELSE "0") + "|"

      STRING(IF ks-cliente.condicaoPagamentoId      <> "" AND INDEX(ks-cliente.condicaoPagamentoId, "?") = 0 THEN INTEGER(ks-cliente.condicaoPagamentoId) ELSE 0) + "|"
      
      STRING(IF ks-cliente.clienteIsentoIE          THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.matrizFinanceira         THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.clienteValorCredito      <> 0 THEN ks-cliente.clienteValorCredito ELSE 0) + "|"
      STRING(IF ks-cliente.clienteContribuinteICMS  THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.clienteSimplesNacional   THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.clienteLimiteCredito     <> 0 THEN ks-cliente.clienteLimiteCredito ELSE 0) + "|"
      STRING(IF ks-cliente.emiteBoleto              THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.avaliacao                <> ? THEN ks-cliente.avaliacao ELSE 0) + "|"
      STRING(IF ks-cliente.avaliacaoEmbarque        <> 0 THEN ks-cliente.avaliacaoEmbarque ELSE 0) + "|"
      (IF ks-cliente.periodoAtraso                  <> ? THEN ks-cliente.periodoAtraso ELSE 0)  "|"
      STRING(IF ks-cliente.clienteFaturamentoParcial THEN "1" ELSE "0") + "|"
      STRING(IF ks-cliente.clienteSuspensaoIPI = YES THEN "YES" ELSE "NO") + "|"
      (IF ks-cliente.clienteAlterado                = YES THEN "YES" ELSE "NO") + "|"
      (IF ks-cliente.clienteInativo                 = YES THEN "YES" ELSE "NO") + "|"

      STRING(YEAR(ks-cliente.clienteDataCadastro),      "9999") + "/" + STRING(MONTH(ks-cliente.clienteDataCadastro), "99") + "/" + STRING(DAY(ks-cliente.clienteDataCadastro), "99") + " 00:00" + "|"
      STRING(YEAR(ks-cliente.clienteDataLimiteCredito), "9999") + "/" + STRING(MONTH(ks-cliente.clienteDataLimiteCredito), "99") + "/" + STRING(DAY(ks-cliente.clienteDataLimiteCredito), "99") + " 00:00" + "|"
      STRING(YEAR(ks-cliente.dataAlteracao),            "9999") + "/" + STRING(MONTH(ks-cliente.dataAlteracao), "99") + "/" + STRING(DAY(ks-cliente.dataAlteracao), "99") + " 00:00" + "|"
      STRING(YEAR(ks-cliente.clienteRGDataEmissao),     "9999") + "/" + STRING(MONTH(ks-cliente.clienteRGDataEmissao), "99") + "/" + STRING(DAY(ks-cliente.clienteRGDataEmissao), "99") + " 00:00" + "|"
      STRING(YEAR(ks-cliente.clienteMotivoData),        "9999") + "/" + STRING(MONTH(ks-cliente.clienteMotivoData), "99") + "/" + STRING(DAY(ks-cliente.clienteMotivoData), "99") + " 00:00" + "|" SKIP.   
      // STRING(YEAR(dDataCriacao),                        "9999") + "/" + STRING(MONTH(dDataCriacao), "99") + "/" + STRING(DAY(dDataCriacao), "99") + " 00:00" + "|"
      //  STRING(YEAR(dDataAtual),                          "9999") + "/" + STRING(MONTH(dDataAtual), "99") + "/" + STRING(DAY(dDataAtual), "99") + " 00:00" + "|"
      

    
    /* Depois de exportar o primeiro registro, sai do loop */
    LEAVE.
END.

OUTPUT CLOSE.

MESSAGE "Arquivo CSV gerado com sucesso com um registro: " cFileName VIEW-AS ALERT-BOX.

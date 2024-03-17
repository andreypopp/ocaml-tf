(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_flowlet_data_flow__sink__dataset
type azurerm_data_factory_flowlet_data_flow__sink__flowlet
type azurerm_data_factory_flowlet_data_flow__sink__linked_service

type azurerm_data_factory_flowlet_data_flow__sink__rejected_linked_service

type azurerm_data_factory_flowlet_data_flow__sink__schema_linked_service

type azurerm_data_factory_flowlet_data_flow__sink
type azurerm_data_factory_flowlet_data_flow__source__dataset
type azurerm_data_factory_flowlet_data_flow__source__flowlet
type azurerm_data_factory_flowlet_data_flow__source__linked_service

type azurerm_data_factory_flowlet_data_flow__source__rejected_linked_service

type azurerm_data_factory_flowlet_data_flow__source__schema_linked_service

type azurerm_data_factory_flowlet_data_flow__source
type azurerm_data_factory_flowlet_data_flow__timeouts
type azurerm_data_factory_flowlet_data_flow__transformation__dataset
type azurerm_data_factory_flowlet_data_flow__transformation__flowlet

type azurerm_data_factory_flowlet_data_flow__transformation__linked_service

type azurerm_data_factory_flowlet_data_flow__transformation
type azurerm_data_factory_flowlet_data_flow

val azurerm_data_factory_flowlet_data_flow :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?script:string prop ->
  ?script_lines:string prop list ->
  ?timeouts:azurerm_data_factory_flowlet_data_flow__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  sink:azurerm_data_factory_flowlet_data_flow__sink list ->
  source:azurerm_data_factory_flowlet_data_flow__source list ->
  transformation:
    azurerm_data_factory_flowlet_data_flow__transformation list ->
  string ->
  unit

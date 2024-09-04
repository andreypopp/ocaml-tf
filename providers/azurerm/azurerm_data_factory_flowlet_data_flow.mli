(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sink__dataset

val sink__dataset :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  sink__dataset

type sink__flowlet

val sink__flowlet :
  ?dataset_parameters:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  sink__flowlet

type sink__linked_service

val sink__linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  sink__linked_service

type sink__rejected_linked_service

val sink__rejected_linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  sink__rejected_linked_service

type sink__schema_linked_service

val sink__schema_linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  sink__schema_linked_service

type sink

val sink :
  ?description:string prop ->
  ?dataset:sink__dataset list ->
  ?flowlet:sink__flowlet list ->
  ?linked_service:sink__linked_service list ->
  ?rejected_linked_service:sink__rejected_linked_service list ->
  ?schema_linked_service:sink__schema_linked_service list ->
  name:string prop ->
  unit ->
  sink

type source__dataset

val source__dataset :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  source__dataset

type source__flowlet

val source__flowlet :
  ?dataset_parameters:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  source__flowlet

type source__linked_service

val source__linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  source__linked_service

type source__rejected_linked_service

val source__rejected_linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  source__rejected_linked_service

type source__schema_linked_service

val source__schema_linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  source__schema_linked_service

type source

val source :
  ?description:string prop ->
  ?dataset:source__dataset list ->
  ?flowlet:source__flowlet list ->
  ?linked_service:source__linked_service list ->
  ?rejected_linked_service:source__rejected_linked_service list ->
  ?schema_linked_service:source__schema_linked_service list ->
  name:string prop ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type transformation__dataset

val transformation__dataset :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  transformation__dataset

type transformation__flowlet

val transformation__flowlet :
  ?dataset_parameters:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  transformation__flowlet

type transformation__linked_service

val transformation__linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  transformation__linked_service

type transformation

val transformation :
  ?description:string prop ->
  ?dataset:transformation__dataset list ->
  ?flowlet:transformation__flowlet list ->
  ?linked_service:transformation__linked_service list ->
  name:string prop ->
  unit ->
  transformation

type azurerm_data_factory_flowlet_data_flow

val azurerm_data_factory_flowlet_data_flow :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?script:string prop ->
  ?script_lines:string prop list ->
  ?sink:sink list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  ?transformation:transformation list ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_flowlet_data_flow

val yojson_of_azurerm_data_factory_flowlet_data_flow :
  azurerm_data_factory_flowlet_data_flow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  script : string prop;
  script_lines : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?script:string prop ->
  ?script_lines:string prop list ->
  ?sink:sink list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  ?transformation:transformation list ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?script:string prop ->
  ?script_lines:string prop list ->
  ?sink:sink list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  ?transformation:transformation list ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

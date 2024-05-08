(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recommendations = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  impact : string prop;  (** impact *)
  recommendation_name : string prop;  (** recommendation_name *)
  recommendation_type_id : string prop;
      (** recommendation_type_id *)
  resource_name : string prop;  (** resource_name *)
  resource_type : string prop;  (** resource_type *)
  suppression_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** suppression_names *)
  updated_time : string prop;  (** updated_time *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_advisor_recommendations

val azurerm_advisor_recommendations :
  ?filter_by_category:string prop list ->
  ?filter_by_resource_groups:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_advisor_recommendations

val yojson_of_azurerm_advisor_recommendations :
  azurerm_advisor_recommendations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter_by_category : string list prop;
  filter_by_resource_groups : string list prop;
  id : string prop;
  recommendations : recommendations list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter_by_category:string prop list ->
  ?filter_by_resource_groups:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?filter_by_category:string prop list ->
  ?filter_by_resource_groups:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource

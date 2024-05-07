(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_start_configuration

val auto_start_configuration :
  ?enabled:bool prop -> unit -> auto_start_configuration

type auto_stop_configuration

val auto_stop_configuration :
  ?enabled:bool prop ->
  ?idle_timeout_minutes:float prop ->
  unit ->
  auto_stop_configuration

type image_configuration

val image_configuration :
  image_uri:string prop -> unit -> image_configuration

type initial_capacity__initial_capacity_config__worker_configuration

val initial_capacity__initial_capacity_config__worker_configuration :
  ?disk:string prop ->
  cpu:string prop ->
  memory:string prop ->
  unit ->
  initial_capacity__initial_capacity_config__worker_configuration

type initial_capacity__initial_capacity_config

val initial_capacity__initial_capacity_config :
  ?worker_configuration:
    initial_capacity__initial_capacity_config__worker_configuration
    list ->
  worker_count:float prop ->
  unit ->
  initial_capacity__initial_capacity_config

type initial_capacity

val initial_capacity :
  ?initial_capacity_config:
    initial_capacity__initial_capacity_config list ->
  initial_capacity_type:string prop ->
  unit ->
  initial_capacity

type maximum_capacity

val maximum_capacity :
  ?disk:string prop ->
  cpu:string prop ->
  memory:string prop ->
  unit ->
  maximum_capacity

type network_configuration

val network_configuration :
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  unit ->
  network_configuration

type aws_emrserverless_application

val aws_emrserverless_application :
  ?architecture:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_start_configuration:auto_start_configuration list ->
  ?auto_stop_configuration:auto_stop_configuration list ->
  ?image_configuration:image_configuration list ->
  ?maximum_capacity:maximum_capacity list ->
  ?network_configuration:network_configuration list ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  initial_capacity:initial_capacity list ->
  unit ->
  aws_emrserverless_application

val yojson_of_aws_emrserverless_application :
  aws_emrserverless_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  architecture : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  release_label : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?architecture:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_start_configuration:auto_start_configuration list ->
  ?auto_stop_configuration:auto_stop_configuration list ->
  ?image_configuration:image_configuration list ->
  ?maximum_capacity:maximum_capacity list ->
  ?network_configuration:network_configuration list ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  initial_capacity:initial_capacity list ->
  string ->
  t

val make :
  ?architecture:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_start_configuration:auto_start_configuration list ->
  ?auto_stop_configuration:auto_stop_configuration list ->
  ?image_configuration:image_configuration list ->
  ?maximum_capacity:maximum_capacity list ->
  ?network_configuration:network_configuration list ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  initial_capacity:initial_capacity list ->
  string ->
  t Tf_core.resource

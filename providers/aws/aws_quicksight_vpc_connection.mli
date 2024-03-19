(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    ?update:string prop ->
    unit ->
    timeouts

type aws_quicksight_vpc_connection

val aws_quicksight_vpc_connection :
    ?aws_account_id:string prop ->
    ?dns_resolvers:string  prop list ->
    ?tags:(string * string  prop) list ->
    ?timeouts:timeouts ->
    name:string prop ->
    role_arn:string prop ->
    security_group_ids:string  prop list ->
    subnet_ids:string  prop list ->
    vpc_connection_id:string prop ->
    unit ->
    aws_quicksight_vpc_connection

val yojson_of_aws_quicksight_vpc_connection : aws_quicksight_vpc_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  availability_status: string prop;
  aws_account_id: string prop;
  dns_resolvers: string list prop;
  id: string prop;
  name: string prop;
  role_arn: string prop;
  security_group_ids: string list prop;
  subnet_ids: string list prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  vpc_connection_id: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?dns_resolvers:string  prop list ->
    ?tags:(string * string  prop) list ->
    ?timeouts:timeouts ->
    name:string prop ->
    role_arn:string prop ->
    security_group_ids:string  prop list ->
    subnet_ids:string  prop list ->
    vpc_connection_id:string prop ->
    string ->
    t


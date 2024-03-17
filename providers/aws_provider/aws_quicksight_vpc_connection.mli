(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_vpc_connection__timeouts

type aws_quicksight_vpc_connection

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

val aws_quicksight_vpc_connection :
    ?aws_account_id:string prop ->
    ?dns_resolvers:string  prop list ->
    ?tags:(string * string  prop) list ->
    ?timeouts:aws_quicksight_vpc_connection__timeouts ->
    name:string prop ->
    role_arn:string prop ->
    security_group_ids:string  prop list ->
    subnet_ids:string  prop list ->
    vpc_connection_id:string prop ->
    string ->
    t


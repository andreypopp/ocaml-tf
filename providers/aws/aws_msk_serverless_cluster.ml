(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type client_authentication__sasl__iam = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** client_authentication__sasl__iam *)

type client_authentication__sasl = {
  iam : client_authentication__sasl__iam list;
}
[@@deriving yojson_of]
(** client_authentication__sasl *)

type client_authentication = {
  sasl : client_authentication__sasl list;
}
[@@deriving yojson_of]
(** client_authentication *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_msk_serverless_cluster = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  client_authentication : client_authentication list;
  timeouts : timeouts option;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster *)

let client_authentication__sasl__iam ~enabled () :
    client_authentication__sasl__iam =
  { enabled }

let client_authentication__sasl ~iam () : client_authentication__sasl
    =
  { iam }

let client_authentication ~sasl () : client_authentication = { sasl }
let timeouts ?create ?delete () : timeouts = { create; delete }

let vpc_config ?security_group_ids ~subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_msk_serverless_cluster ?id ?tags ?tags_all ?timeouts
    ~cluster_name ~client_authentication ~vpc_config () :
    aws_msk_serverless_cluster =
  {
    cluster_name;
    id;
    tags;
    tags_all;
    client_authentication;
    timeouts;
    vpc_config;
  }

type t = {
  arn : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~cluster_name
    ~client_authentication ~vpc_config __resource_id =
  let __resource_type = "aws_msk_serverless_cluster" in
  let __resource =
    aws_msk_serverless_cluster ?id ?tags ?tags_all ?timeouts
      ~cluster_name ~client_authentication ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_serverless_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       cluster_uuid =
         Prop.computed __resource_type __resource_id "cluster_uuid";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

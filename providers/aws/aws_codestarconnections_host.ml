(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_configuration = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tls_certificate : string prop option; [@option]
      (** tls_certificate *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_configuration *)

type aws_codestarconnections_host = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provider_endpoint : string prop;  (** provider_endpoint *)
  provider_type : string prop;  (** provider_type *)
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_codestarconnections_host *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ?tls_certificate ~security_group_ids
    ~subnet_ids ~vpc_id () : vpc_configuration =
  { security_group_ids; subnet_ids; tls_certificate; vpc_id }

let aws_codestarconnections_host ?id ?timeouts ~name
    ~provider_endpoint ~provider_type ~vpc_configuration () :
    aws_codestarconnections_host =
  {
    id;
    name;
    provider_endpoint;
    provider_type;
    timeouts;
    vpc_configuration;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  provider_endpoint : string prop;
  provider_type : string prop;
  status : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~provider_endpoint
    ~provider_type ~vpc_configuration __resource_id =
  let __resource_type = "aws_codestarconnections_host" in
  let __resource =
    aws_codestarconnections_host ?id ?timeouts ~name
      ~provider_endpoint ~provider_type ~vpc_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarconnections_host __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       provider_endpoint =
         Prop.computed __resource_type __resource_id
           "provider_endpoint";
       provider_type =
         Prop.computed __resource_type __resource_id "provider_type";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes

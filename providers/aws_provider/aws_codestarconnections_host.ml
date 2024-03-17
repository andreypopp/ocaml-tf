(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codestarconnections_host__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_host__timeouts *)

type aws_codestarconnections_host__vpc_configuration = {
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  tls_certificate : string option; [@option]  (** tls_certificate *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_host__vpc_configuration *)

type aws_codestarconnections_host = {
  name : string;  (** name *)
  provider_endpoint : string;  (** provider_endpoint *)
  provider_type : string;  (** provider_type *)
  timeouts : aws_codestarconnections_host__timeouts option;
  vpc_configuration :
    aws_codestarconnections_host__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_codestarconnections_host *)

let aws_codestarconnections_host ?timeouts ~name ~provider_endpoint
    ~provider_type ~vpc_configuration __resource_id =
  let __resource_type = "aws_codestarconnections_host" in
  let __resource =
    {
      name;
      provider_endpoint;
      provider_type;
      timeouts;
      vpc_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarconnections_host __resource);
  ()

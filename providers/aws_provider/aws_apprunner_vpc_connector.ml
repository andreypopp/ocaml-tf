(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_vpc_connector = {
  id : string option; [@option]  (** id *)
  security_groups : string list;  (** security_groups *)
  subnets : string list;  (** subnets *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_connector_name : string;  (** vpc_connector_name *)
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_connector *)

let aws_apprunner_vpc_connector ?id ?tags ?tags_all ~security_groups
    ~subnets ~vpc_connector_name __resource_id =
  let __resource_type = "aws_apprunner_vpc_connector" in
  let __resource =
    {
      id;
      security_groups;
      subnets;
      tags;
      tags_all;
      vpc_connector_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_vpc_connector __resource);
  ()

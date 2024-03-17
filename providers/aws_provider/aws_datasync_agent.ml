(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_agent__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_datasync_agent__timeouts *)

type aws_datasync_agent = {
  activation_key : string prop option; [@option]
      (** activation_key *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop option; [@option]  (** name *)
  private_link_endpoint : string prop option; [@option]
      (** private_link_endpoint *)
  security_group_arns : string prop list option; [@option]
      (** security_group_arns *)
  subnet_arns : string prop list option; [@option]
      (** subnet_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  timeouts : aws_datasync_agent__timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_agent *)

let aws_datasync_agent ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts __resource_id =
  let __resource_type = "aws_datasync_agent" in
  let __resource =
    {
      activation_key;
      id;
      ip_address;
      name;
      private_link_endpoint;
      security_group_arns;
      subnet_arns;
      tags;
      tags_all;
      vpc_endpoint_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_agent __resource);
  ()

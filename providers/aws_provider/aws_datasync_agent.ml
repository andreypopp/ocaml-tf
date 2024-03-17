(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_agent__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_datasync_agent__timeouts *)

type aws_datasync_agent = {
  name : string option; [@option]  (** name *)
  security_group_arns : string list option; [@option]
      (** security_group_arns *)
  subnet_arns : string list option; [@option]  (** subnet_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_endpoint_id : string option; [@option]  (** vpc_endpoint_id *)
  timeouts : aws_datasync_agent__timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_agent *)

let aws_datasync_agent ?name ?security_group_arns ?subnet_arns ?tags
    ?vpc_endpoint_id ?timeouts __resource_id =
  let __resource_type = "aws_datasync_agent" in
  let __resource =
    {
      name;
      security_group_arns;
      subnet_arns;
      tags;
      vpc_endpoint_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_agent __resource);
  ()

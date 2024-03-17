(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sfn_alias__routing_configuration = {
  state_machine_version_arn : string;
      (** state_machine_version_arn *)
  weight : float;  (** weight *)
}
[@@deriving yojson_of]
(** aws_sfn_alias__routing_configuration *)

type aws_sfn_alias__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sfn_alias__timeouts *)

type aws_sfn_alias = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  routing_configuration : aws_sfn_alias__routing_configuration list;
  timeouts : aws_sfn_alias__timeouts option;
}
[@@deriving yojson_of]
(** aws_sfn_alias *)

let aws_sfn_alias ?description ?timeouts ~name ~routing_configuration
    __resource_id =
  let __resource_type = "aws_sfn_alias" in
  let __resource =
    { description; name; routing_configuration; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sfn_alias __resource);
  ()

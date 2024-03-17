(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sfn_alias__routing_configuration = {
  state_machine_version_arn : string prop;
      (** state_machine_version_arn *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_sfn_alias__routing_configuration *)

type aws_sfn_alias__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_sfn_alias__timeouts *)

type aws_sfn_alias = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_configuration : aws_sfn_alias__routing_configuration list;
  timeouts : aws_sfn_alias__timeouts option;
}
[@@deriving yojson_of]
(** aws_sfn_alias *)

let aws_sfn_alias ?description ?id ?timeouts ~name
    ~routing_configuration __resource_id =
  let __resource_type = "aws_sfn_alias" in
  let __resource =
    { description; id; name; routing_configuration; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sfn_alias __resource);
  ()

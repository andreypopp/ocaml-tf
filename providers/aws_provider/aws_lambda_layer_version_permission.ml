(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_layer_version_permission = {
  action : string;  (** action *)
  layer_name : string;  (** layer_name *)
  organization_id : string option; [@option]  (** organization_id *)
  principal : string;  (** principal *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  statement_id : string;  (** statement_id *)
  version_number : float;  (** version_number *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version_permission *)

let aws_lambda_layer_version_permission ?organization_id
    ?skip_destroy ~action ~layer_name ~principal ~statement_id
    ~version_number __resource_id =
  let __resource_type = "aws_lambda_layer_version_permission" in
  let __resource =
    {
      action;
      layer_name;
      organization_id;
      principal;
      skip_destroy;
      statement_id;
      version_number;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_layer_version_permission __resource);
  ()

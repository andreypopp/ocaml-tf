(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_layer_version_permission = {
  action : string prop;  (** action *)
  id : string prop option; [@option]  (** id *)
  layer_name : string prop;  (** layer_name *)
  organization_id : string prop option; [@option]
      (** organization_id *)
  principal : string prop;  (** principal *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  statement_id : string prop;  (** statement_id *)
  version_number : float prop;  (** version_number *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version_permission *)

let aws_lambda_layer_version_permission ?id ?organization_id
    ?skip_destroy ~action ~layer_name ~principal ~statement_id
    ~version_number __resource_id =
  let __resource_type = "aws_lambda_layer_version_permission" in
  let __resource =
    {
      action;
      id;
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

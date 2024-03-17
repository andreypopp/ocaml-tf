(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_destination = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination *)

let aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
    ~role_arn ~target_arn __resource_id =
  let __resource_type = "aws_cloudwatch_log_destination" in
  let __resource =
    { id; name; role_arn; tags; tags_all; target_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_destination __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_parameter = {
  allowed_pattern : string option; [@option]  (** allowed_pattern *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  overwrite : bool option; [@option]  (** overwrite *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ssm_parameter *)

let aws_ssm_parameter ?allowed_pattern ?description ?overwrite ?tags
    ~name ~type_ __resource_id =
  let __resource_type = "aws_ssm_parameter" in
  let __resource =
    { allowed_pattern; description; name; overwrite; tags; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_parameter __resource);
  ()

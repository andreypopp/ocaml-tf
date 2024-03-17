(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_upload = {
  content_type : string option; [@option]  (** content_type *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  project_arn : string;  (** project_arn *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_devicefarm_upload *)

let aws_devicefarm_upload ?content_type ?id ~name ~project_arn ~type_
    __resource_id =
  let __resource_type = "aws_devicefarm_upload" in
  let __resource = { content_type; id; name; project_arn; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_upload __resource);
  ()

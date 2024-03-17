(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_upload = {
  content_type : string prop option; [@option]  (** content_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_arn : string prop;  (** project_arn *)
  type_ : string prop; [@key "type"]  (** type *)
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

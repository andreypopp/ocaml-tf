(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_device_pool__rule = {
  attribute : string option; [@option]  (** attribute *)
  operator : string option; [@option]  (** operator *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_devicefarm_device_pool__rule *)

type aws_devicefarm_device_pool = {
  description : string option; [@option]  (** description *)
  max_devices : float option; [@option]  (** max_devices *)
  name : string;  (** name *)
  project_arn : string;  (** project_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  rule : aws_devicefarm_device_pool__rule list;
}
[@@deriving yojson_of]
(** aws_devicefarm_device_pool *)

let aws_devicefarm_device_pool ?description ?max_devices ?tags ~name
    ~project_arn ~rule __resource_id =
  let __resource_type = "aws_devicefarm_device_pool" in
  let __resource =
    { description; max_devices; name; project_arn; tags; rule }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_device_pool __resource);
  ()

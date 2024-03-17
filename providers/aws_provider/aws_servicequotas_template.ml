(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_template = {
  quota_code : string prop;  (** quota_code *)
  region : string prop;  (** region *)
  service_code : string prop;  (** service_code *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template *)

let aws_servicequotas_template ~quota_code ~region ~service_code
    ~value __resource_id =
  let __resource_type = "aws_servicequotas_template" in
  let __resource = { quota_code; region; service_code; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_template __resource);
  ()

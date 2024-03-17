(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_controltower_landing_zone__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_controltower_landing_zone__timeouts *)

type aws_controltower_landing_zone__drift_status = {
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_controltower_landing_zone = {
  manifest_json : string;  (** manifest_json *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string;  (** version *)
  timeouts : aws_controltower_landing_zone__timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_landing_zone *)

let aws_controltower_landing_zone ?tags ?timeouts ~manifest_json
    ~version __resource_id =
  let __resource_type = "aws_controltower_landing_zone" in
  let __resource = { manifest_json; tags; version; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_controltower_landing_zone __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_sink__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_sink__timeouts *)

type aws_oam_sink = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_oam_sink__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_sink *)

let aws_oam_sink ?tags ?timeouts ~name __resource_id =
  let __resource_type = "aws_oam_sink" in
  let __resource = { name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_sink __resource);
  ()

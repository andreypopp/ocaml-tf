(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ivs_channel__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivs_channel__timeouts *)

type aws_ivs_channel = {
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_ivs_channel__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_channel *)

let aws_ivs_channel ?tags ?timeouts __resource_id =
  let __resource_type = "aws_ivs_channel" in
  let __resource = { tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_channel __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_gateway__timeouts *)

type aws_dx_gateway = {
  amazon_side_asn : string prop;  (** amazon_side_asn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : aws_dx_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway *)

let aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name __resource_id
    =
  let __resource_type = "aws_dx_gateway" in
  let __resource = { amazon_side_asn; id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_gateway __resource);
  ()

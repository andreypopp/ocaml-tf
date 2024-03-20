(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_image_block_public_access = {
  id : string prop option; [@option]  (** id *)
  state : string prop;  (** state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access *)

let timeouts ?update () : timeouts = { update }

let aws_ec2_image_block_public_access ?id ?timeouts ~state () :
    aws_ec2_image_block_public_access =
  { id; state; timeouts }

type t = { id : string prop; state : string prop }

let make ?id ?timeouts ~state __id =
  let __type = "aws_ec2_image_block_public_access" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_image_block_public_access
        (aws_ec2_image_block_public_access ?id ?timeouts ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~state __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~state __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

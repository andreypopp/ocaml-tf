(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_managed_prefix_list_entry = {
  cidr : string prop;  (** cidr *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  prefix_list_id : string prop;  (** prefix_list_id *)
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list_entry *)

let aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
    ~prefix_list_id () : aws_ec2_managed_prefix_list_entry =
  { cidr; description; id; prefix_list_id }

type t = {
  cidr : string prop;
  description : string prop;
  id : string prop;
  prefix_list_id : string prop;
}

let make ?description ?id ~cidr ~prefix_list_id __id =
  let __type = "aws_ec2_managed_prefix_list_entry" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_managed_prefix_list_entry
        (aws_ec2_managed_prefix_list_entry ?description ?id ~cidr
           ~prefix_list_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~cidr ~prefix_list_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~cidr ~prefix_list_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

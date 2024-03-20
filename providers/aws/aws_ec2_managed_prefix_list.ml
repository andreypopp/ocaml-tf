(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entry = {
  cidr : string prop;  (** cidr *)
  description : string prop option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** entry *)

type aws_ec2_managed_prefix_list = {
  address_family : string prop;  (** address_family *)
  id : string prop option; [@option]  (** id *)
  max_entries : float prop;  (** max_entries *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  entry : entry list;
}
[@@deriving yojson_of]
(** aws_ec2_managed_prefix_list *)

let entry ?description ~cidr () : entry = { cidr; description }

let aws_ec2_managed_prefix_list ?id ?tags ?tags_all ~address_family
    ~max_entries ~name ~entry () : aws_ec2_managed_prefix_list =
  { address_family; id; max_entries; name; tags; tags_all; entry }

type t = {
  address_family : string prop;
  arn : string prop;
  id : string prop;
  max_entries : float prop;
  name : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?id ?tags ?tags_all ~address_family ~max_entries ~name
    ~entry __id =
  let __type = "aws_ec2_managed_prefix_list" in
  let __attrs =
    ({
       address_family = Prop.computed __type __id "address_family";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       max_entries = Prop.computed __type __id "max_entries";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_managed_prefix_list
        (aws_ec2_managed_prefix_list ?id ?tags ?tags_all
           ~address_family ~max_entries ~name ~entry ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~address_family
    ~max_entries ~name ~entry __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~address_family ~max_entries ~name
      ~entry __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

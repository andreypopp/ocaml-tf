(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entry = {
  cidr : string prop;
  description : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entry) -> ()

let yojson_of_entry =
  (function
   | { cidr = v_cidr; description = v_description } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entry

[@@@deriving.end]

type aws_ec2_managed_prefix_list = {
  address_family : string prop;
  id : string prop option; [@option]
  max_entries : float prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  entry : entry list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_managed_prefix_list) -> ()

let yojson_of_aws_ec2_managed_prefix_list =
  (function
   | {
       address_family = v_address_family;
       id = v_id;
       max_entries = v_max_entries;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       entry = v_entry;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_entry then bnds
         else
           let arg = (yojson_of_list yojson_of_entry) v_entry in
           let bnd = "entry", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_entries in
         ("max_entries", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_family
         in
         ("address_family", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_managed_prefix_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_managed_prefix_list

[@@@deriving.end]

let entry ?description ~cidr () : entry = { cidr; description }

let aws_ec2_managed_prefix_list ?id ?tags ?tags_all ~address_family
    ~max_entries ~name ~entry () : aws_ec2_managed_prefix_list =
  { address_family; id; max_entries; name; tags; tags_all; entry }

type t = {
  tf_name : string;
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
       tf_name = __id;
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dataexchange_data_set = {
  asset_type : string prop;
  description : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dataexchange_data_set) -> ()

let yojson_of_aws_dataexchange_data_set =
  (function
   | {
       asset_type = v_asset_type;
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_asset_type in
         ("asset_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_dataexchange_data_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dataexchange_data_set

[@@@deriving.end]

let aws_dataexchange_data_set ?id ?tags ?tags_all ~asset_type
    ~description ~name () : aws_dataexchange_data_set =
  { asset_type; description; id; name; tags; tags_all }

type t = {
  arn : string prop;
  asset_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~asset_type ~description ~name __id =
  let __type = "aws_dataexchange_data_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       asset_type = Prop.computed __type __id "asset_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dataexchange_data_set
        (aws_dataexchange_data_set ?id ?tags ?tags_all ~asset_type
           ~description ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~asset_type ~description
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~asset_type ~description ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

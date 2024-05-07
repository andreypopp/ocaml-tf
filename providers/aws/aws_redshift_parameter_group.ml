(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type aws_redshift_parameter_group = {
  description : string prop option; [@option]
  family : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  parameter : parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_parameter_group) -> ()

let yojson_of_aws_redshift_parameter_group =
  (function
   | {
       description = v_description;
       family = v_family;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_parameter v_parameter in
         ("parameter", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_parameter_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_parameter_group

[@@@deriving.end]

let parameter ~name ~value () : parameter = { name; value }

let aws_redshift_parameter_group ?description ?id ?tags ?tags_all
    ~family ~name ~parameter () : aws_redshift_parameter_group =
  { description; family; id; name; tags; tags_all; parameter }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~family ~name ~parameter
    __id =
  let __type = "aws_redshift_parameter_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       family = Prop.computed __type __id "family";
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
      yojson_of_aws_redshift_parameter_group
        (aws_redshift_parameter_group ?description ?id ?tags
           ?tags_all ~family ~name ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~family
    ~name ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~family ~name ~parameter
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

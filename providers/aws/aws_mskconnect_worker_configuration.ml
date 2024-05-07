(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_mskconnect_worker_configuration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  properties_file_content : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mskconnect_worker_configuration) -> ()

let yojson_of_aws_mskconnect_worker_configuration =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       properties_file_content = v_properties_file_content;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_properties_file_content
         in
         ("properties_file_content", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mskconnect_worker_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mskconnect_worker_configuration

[@@@deriving.end]

let aws_mskconnect_worker_configuration ?description ?id ~name
    ~properties_file_content () : aws_mskconnect_worker_configuration
    =
  { description; id; name; properties_file_content }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  properties_file_content : string prop;
}

let make ?description ?id ~name ~properties_file_content __id =
  let __type = "aws_mskconnect_worker_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       latest_revision = Prop.computed __type __id "latest_revision";
       name = Prop.computed __type __id "name";
       properties_file_content =
         Prop.computed __type __id "properties_file_content";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mskconnect_worker_configuration
        (aws_mskconnect_worker_configuration ?description ?id ~name
           ~properties_file_content ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name
    ~properties_file_content __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~properties_file_content __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

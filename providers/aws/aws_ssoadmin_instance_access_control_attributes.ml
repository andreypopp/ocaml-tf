(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute__value = {
  source : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute__value) -> ()

let yojson_of_attribute__value =
  (function
   | { source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : attribute__value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute__value

[@@@deriving.end]

type attribute = {
  key : string prop;
  value : attribute__value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute) -> ()

let yojson_of_attribute =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_value then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attribute__value) v_value
           in
           let bnd = "value", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute

[@@@deriving.end]

type aws_ssoadmin_instance_access_control_attributes = {
  id : string prop option; [@option]
  instance_arn : string prop;
  attribute : attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ssoadmin_instance_access_control_attributes) -> ()

let yojson_of_aws_ssoadmin_instance_access_control_attributes =
  (function
   | {
       id = v_id;
       instance_arn = v_instance_arn;
       attribute = v_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attribute) v_attribute
           in
           let bnd = "attribute", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_instance_access_control_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_instance_access_control_attributes

[@@@deriving.end]

let attribute__value ~source () : attribute__value = { source }
let attribute ~key ~value () : attribute = { key; value }

let aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
    ~attribute () : aws_ssoadmin_instance_access_control_attributes =
  { id; instance_arn; attribute }

type t = {
  tf_name : string;
  id : string prop;
  instance_arn : string prop;
  status : string prop;
  status_reason : string prop;
}

let make ?id ~instance_arn ~attribute __id =
  let __type = "aws_ssoadmin_instance_access_control_attributes" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_instance_access_control_attributes
        (aws_ssoadmin_instance_access_control_attributes ?id
           ~instance_arn ~attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_arn ~attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_arn ~attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

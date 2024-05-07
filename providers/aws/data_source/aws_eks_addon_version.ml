(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_addon_version = {
  addon_name : string prop;
  id : string prop option; [@option]
  kubernetes_version : string prop;
  most_recent : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_addon_version) -> ()

let yojson_of_aws_eks_addon_version =
  (function
   | {
       addon_name = v_addon_name;
       id = v_id;
       kubernetes_version = v_kubernetes_version;
       most_recent = v_most_recent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_version
         in
         ("kubernetes_version", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_addon_name in
         ("addon_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_addon_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_addon_version

[@@@deriving.end]

let aws_eks_addon_version ?id ?most_recent ~addon_name
    ~kubernetes_version () : aws_eks_addon_version =
  { addon_name; id; kubernetes_version; most_recent }

type t = {
  tf_name : string;
  addon_name : string prop;
  id : string prop;
  kubernetes_version : string prop;
  most_recent : bool prop;
  version : string prop;
}

let make ?id ?most_recent ~addon_name ~kubernetes_version __id =
  let __type = "aws_eks_addon_version" in
  let __attrs =
    ({
       tf_name = __id;
       addon_name = Prop.computed __type __id "addon_name";
       id = Prop.computed __type __id "id";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       most_recent = Prop.computed __type __id "most_recent";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_addon_version
        (aws_eks_addon_version ?id ?most_recent ~addon_name
           ~kubernetes_version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ~addon_name
    ~kubernetes_version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ~addon_name ~kubernetes_version __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

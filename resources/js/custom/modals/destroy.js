$(document).ready(function () {
  $(document).on("click", ".bk-btn-actions__link--delete", (e) => {
    let data_id = $(e.target).data("id");
    let data_pr = $(e.target).data("product");
    let data_tname = $(e.target).data("table-name");
    let url = $(location).attr("pathname");

    // cheking
    console.log(data_id);
    console.log(url);

    switch (data_tname) {
      case "category":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "bar":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "continent":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "vip":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "team":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "hall-type":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "hall":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "feature":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "gallery":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "photo":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "assortment":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "dish":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "order":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "news":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;

      case "translate":
        $("#bk-delete-form").attr("action", `${url}/${data_id}`);
        break;
    }
  });
});

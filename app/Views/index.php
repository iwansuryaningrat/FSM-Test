<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/styles.css">

    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
    <link rel="manifest" href="/favicon/site.webmanifest">

    <title><?= $title; ?></title>
</head>

<body class="container-fluid bg-gradient p-5">
    <h1 class="text-center text-white pb-5"><?= $title; ?></h1>
    <div class="text-center">
        <div class="container-fluid bg-white rounded p-3">
            <div class="row">
                <div class="col-12 font-weight-bold"><?= $title; ?></div>
            </div>
            <hr>
            <table class="table table-striped table-borderless">
                <thead>
                    <tr class="row">
                        <th class="col">No</th>
                        <th class="col">Name</th>
                        <th class="col">Action</th>
                    </tr>
                </thead>


                <!-- table content -->

                <!-- table row -->
                <?php $i = 1;
                foreach ($topics as $topic) : ?>
                    <tr class="row">
                        <td class="col"><?= $i ?></td>
                        <td class="col"><?= $topic['name']; ?></td>
                        <td class="col"><a class="btn btn-blue rounded text-white" href="/home/responses/<?= $topic['id'] ?>">Open Form</a></td>
                    </tr>
                <?php $i++;
                endforeach; ?>

            </table>
        </div>

    </div>

</body>

</html>